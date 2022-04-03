
// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import type { NextApiRequest, NextApiResponse } from 'next'
import { exec } from 'child_process'

type Data = {
  name: string
}

export default function handler(
  req: NextApiRequest,
  res: NextApiResponse<Data>
) {
  exec('sh /app/scripts/destroy.sh', (error, stdout, stderr) => {
    console.log(stdout);
    console.log(stderr);
    
    
    res.json({ name: stdout ?? stderr})
  })
}
